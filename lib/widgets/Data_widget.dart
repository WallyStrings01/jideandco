//import 'package:flutter/material.dart';
 class Val{
   String text;
   String title;
   String image;
Val(this.title,this.image,this.text);
 }
 class Facility{
   String text;
   String title;
   String image;
   Facility(this.title,this.image,this.text);
 }
 class Advisory{
   String text;
   String title;
   String image;
   Advisory(this.title,this.image,this.text);
 }
List<Advisory> Advisories =[
  Advisory('Project Development', 'assets/images/Project_development.png',
      'The Project Team work across the depth of our branch offices located in every geo-political zones of Nigeria. Professionally qualified and leaning on a rare assemblage of wealth of experience, each consultant regularly updates knowledge of the current trends and potentialities of the future. '),
  Advisory('Rating Services', 'assets/images/Rating_services.png',
      'Whether for government, businesses, landlords or tenants, our rating team provides best- in class services. Our teams help clients in assessing, managing and challenging rateable values and taxes on clients behalf. We help clients minimize rates and tax liabilities, while ensuring advisory on vacant or under-utilized spaces yield optimally for our clients.'),


];
List< Facility> Facilities = [
  Facility('',
      '',
      'Facilities Management encompasses a range of services to ensure the health and safety, efficiency, welfare, comfort and functionality of a building, its residents and employees and the ground it sits on. With over four decades hands on experience in this field, we have proven track record in property/facility management that optimize resources for investors and occupiers across all types of properties.'),
  Facility('Commercial/ Office Space Management',
      'assets/images/commercial_management.png',
      'At Jide Taiwo and Co, our commercial/office space management services deliver enhanced occupier satisfaction, which is a focal point in maintaining full occupancy and tenant retention. We provide integrated business space management services in tandem with our clients unique business goals and strategy. '),
  Facility('Residential Property Management',
      'assets/images/residential_management.png',
      'With 27 business offices spread across Nigeria, our experts combined locational knowledge with global standards to deliver expert opinions to our clients and indeed other stakeholders in project development and management.'),
  Facility('Portfolio Estate Manageement',
      'assets/images/portfolio_management.png',
      'On behalf of our esteemed clients, we constantly seek ways to maximize investment returns of their residential and mixed used portfolios. Using a combination of new technologies, in-depth knowledge of local and national markets,.'),
  Facility('Shopping mall / Retail Center Management',
      'assets/images/shopping_management.png',
      'Shopping Mall/Retail Centre Management is one of our strengths in the area of property management portfolio. We are committed to ensuring that our managed shopping centres provide the best possible customer experience.'),


];
List<Val> Valuations = [
  Val('Asset Valuation',
      'assets/images/valuation.png',
      'We are conversant with the Nigerian and West African real estate '
          'industry. This knowledge enable our valuation experts deploy global best practices in asset valuation services.'),
  Val('Development Valuation',
      'assets/images/Development_valuation.png',
      'With 27 business offices spread across Nigeria, our experts combined locational knowledge with global standards to deliver expert opinions to our clients and indeed other stakeholders in project development and management.'),
  Val('Commercial & Industrial Valuation',
      'assets/images/commercialValuation.png',
      'We have earned trust as a go-to firm when commercial/Industrial valuation comes to mind in Nigeria. For over four decades, we have provided expert opinions and appraisal on commercial valuation ranging from offices, retail, and industrial concerns to a wide spectrum of clients in private and public sectors.'),
  Val('Education sector Valuation',
      'assets/images/educationValuation.png',
      'We leverage on the depth of our valuation specialists to provide expert opinions on appraisal relating to schools at all levels. Our wealth of experience is brought to bear on valuation of educational premises, infrastructures, student accommodation, healthcare, sports and logistics support. '),
  Val('Power & Energy Sector Valuation',
      'assets/images/powerValuation.png',
      'We are mindful of the importance of an efficient energy and power sector in the development of a nation. Our power and energy valuation specialists provide timely and professional appraisal and due diligence on energy assets, utilities and machinery for banks, operators, insurance, regulatory and allied players in the energy and power sector. '),
  Val('Expert Witness & Dispute Resolution',
      'assets/images/expertResolution.png',
      'At Jide Taiwo & Co., We provide advisory on valuation in aid of conflict resolution as it relates to property disputes. We have been engaged by solicitors and other legal practitioners as expert witness, mediator, and arbitrators on several occasions..'),
  Val('Agric & Agro Allied Valuation',
      'assets/images/agricValuation.png',
      'Farm and agro-allied asset valuation can be for diverse purpose. Such appraisal could be for loan security, merger and acquisition, internal transfer, statement of account, dispute resolution or taxation.'),
  Val('Hotel & Hospitality Valuation',
      'assets/images/hotelValuation.png',
      'Operating from our various business offices are our team of hotel and hospitality valuation experts. Our specialty covers not just hotels, but serviced apartments, hostels, tourist sites, beaches, and similar assets, so classified for their trading potentials. '),
];
